import { Injectable } from '@nestjs/common';
import {InjectRepository} from "@nestjs/typeorm";
import { UserEntity } from 'src/entities/user.entity/user.entity';
import {Repository} from 'typeorm';

import * as cryptage from 'bcrypt';
import { JwtService } from '@nestjs/jwt';

@Injectable()
export class UsersService {
    constructor(
        @InjectRepository(UserEntity)
        private usersRepository: Repository<UserEntity>,
        private jwtService : JwtService
    ){}


    async getUsers() : Promise<UserEntity[]>{
        return await this.usersRepository.find()
    }
    async findUser(id : number) : Promise<UserEntity | null>{
        return await this.usersRepository.findOneBy({id})
    }
    
    async checkEmail(email:string){
        const result = {status:false,message:""}
        const user = await this.usersRepository.createQueryBuilder("user")
        .where("user.email = :email",{email})
        .getOne()
        if(user){
            result.status=false
            result.message="email exist"
        }else{
            result.status=true
        }
        return result
    }

    async newUser(user:Partial<UserEntity>) : Promise<UserEntity>{
        const newUser = this.usersRepository.create({...user})
        const crypt = "$2b$10$TE7YHtY5dtrNWFB2W/7O7e"
        newUser.password = await cryptage.hash(newUser.password,crypt)
        return this.usersRepository.save(newUser)
    }
    async login_user(credentials:Partial<UserEntity>) {
        const {email,password} = credentials    
        const result = {status:false,message:"",data:{}}
        const user = await this.usersRepository.createQueryBuilder("user")
        .where("user.email = :email",{email})
        .getOne()
        
        if(!user){
            result.status=false
            result.message="invalid email"
        }else{
            const crypt = "$2b$10$TE7YHtY5dtrNWFB2W/7O7e"
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

    async deleteUser(id : number){
        await this.usersRepository.delete(id)
    }

    async usersDelete(){
        await this.usersRepository.clear()
    }

    async userUpdate(id : number,user : Partial<UserEntity>){
        return await this.usersRepository.update(id,user)
    }
}
