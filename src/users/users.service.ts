import { Injectable } from '@nestjs/common';
import {InjectRepository} from "@nestjs/typeorm";
import { UsersEntity } from './entity/users.entity';
import {Repository} from 'typeorm';


@Injectable()
export class UsersService {
    constructor(
        @InjectRepository(UsersEntity)
        private usersRepository: Repository<UsersEntity>
    ){}


    async getUsers() : Promise<UsersEntity[]>{
        return await this.usersRepository.find()
    }
    async findUser(id : number) : Promise<UsersEntity | null>{
        return await this.usersRepository.findOneBy({id})
       
    }
    async newUser(user:Partial<UsersEntity>) : Promise<UsersEntity>{
        return await this.usersRepository.save(user)
    }

    async deleteUser(id : number){
        await this.usersRepository.delete(id)
    }

    async usersDelete(){
        await this.usersRepository.clear()
    }

    async userUpdate(id : number,user : Partial<UsersEntity>){
        return await this.usersRepository.update(id,user)
    }
}
