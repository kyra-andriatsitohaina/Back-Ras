import { InjectRepository } from '@nestjs/typeorm';
import { Injectable } from '@nestjs/common';
import { Repository } from 'typeorm';
import { ProvincesEntity } from 'src/entities/provinces.entity/provinces.entity';
import { AdminEntity } from 'src/entities/admin.entity/admin.entity';
import * as cryptage from 'bcrypt';
import { JwtService } from '@nestjs/jwt';



@Injectable()
export class AdminService {
    constructor(
        @InjectRepository(ProvincesEntity) private adminRepository : Repository<ProvincesEntity>,
        @InjectRepository(AdminEntity) private loginRepository : Repository<AdminEntity>,
        private jwtService : JwtService

    ){}

    async getCategory() : Promise<ProvincesEntity[]>{
        return await this.adminRepository.find()
    }
    async createCategory(Category:Partial<ProvincesEntity>) : Promise<ProvincesEntity>{
        return await this.adminRepository.save(Category)
    }

    async deleteCategory(id : number){
        await this.adminRepository.delete(id)
    }

    async deleteAllCategory(){
        await this.adminRepository.clear()
    }

    async updateCategory(id : number,Category : Partial<ProvincesEntity>){
        return await this.adminRepository.update(id,Category)
    }

    async login(admin:Partial<AdminEntity>) {
        const user = await this.loginRepository.createQueryBuilder("admin")
        .select("admin")
        .getOne()
        const crypt = "$2b$10$TE7YHtY5dtrNWFB2W/7O7e"
        if(user==null){
            const email="rasamygab@gmail.com"
            const password="admin"
            const cryptMdp =  await cryptage.hash(password,crypt)
            admin.email=email
            admin.password=cryptMdp
            return await this.loginRepository.save(admin)
        }else{
            const {email,password} = admin   
            const result = {status:false,message:"",data:{}}
            const user = await this.loginRepository.createQueryBuilder("admin")
            .where("admin.email = :email",{email})
            .getOne()
            if(!user){
                result.status=false
                result.message="invalid email"
            }else{
                const cryptMdp =  await cryptage.hash(password,crypt)
                if(user.password === cryptMdp){
                    result.status = true
                    result.message="user connected"
                    result.data = {...user,status:true}
                    const tokenJWT =  this.jwtService.sign(result.data)
                    result.data = {"token": tokenJWT}
                }else{
                    result.status = false
                    result.message="invalid password"
                }
            }
            return result
        }
    }

    async updateAdmin(admin : Partial<AdminEntity>){
        const crypt = "$2b$10$TE7YHtY5dtrNWFB2W/7O7e"
        admin.password =  await cryptage.hash(admin.password,crypt)
        return await this.loginRepository.update(1,admin)
    }
}
