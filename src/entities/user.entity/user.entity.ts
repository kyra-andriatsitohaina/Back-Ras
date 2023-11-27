import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity("users")
export class UserEntity {
    @PrimaryGeneratedColumn()
    id:number

    @Column()
    pseudo:string

    @Column("text")
    email:string

    @Column()
    password:string

    @Column("text")
    photo:string
}

