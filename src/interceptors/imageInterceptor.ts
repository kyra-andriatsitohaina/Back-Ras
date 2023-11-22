import { extname } from "path";

export const imageFileFilter = (req:any, file:any, callback:any) => {
    if (!file.originalname.match(/\.(jpg|jpeg|png|gif)$/)) {
      return callback(new Error('Only image files are allowed!'), false);
    }
    callback(null, true);

  };
  
  export const editFileName = (req :any, file :any, callback :any) => {
    const name = `K${Math.round(Math.random()*1000000)}Y${Math.round(Math.random()*1000000)}R${Math.round(Math.random()*1000000)}A${Math.round(Math.random()*1000000)}`.split('.')[0];
    const fileExtName = extname(file.originalname);
    callback(null, `${name}${fileExtName}`);
  }