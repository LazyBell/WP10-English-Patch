import zipfile,os,sys
src,out,start,end=sys.argv[1],sys.argv[2],int(sys.argv[3]),int(sys.argv[4])
files=[]
for r,ds,fs in os.walk(src):
    for f in sorted(fs): files.append(os.path.join(r,f))
files.sort()
mode='w' if start==0 else 'a'
z=zipfile.ZipFile(out,mode,allowZip64=True)
for p in files[start:end]:
    arc='WP10_English_Patch/'+os.path.relpath(p,src).replace(os.sep,'/')
    z.write(p,arc,compress_type=zipfile.ZIP_STORED if p.endswith('.webm') else zipfile.ZIP_DEFLATED)
z.close();print(len(files),start,end)
