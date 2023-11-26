import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';
@Entity("admin")
export class AdminEntity {
    @PrimaryGeneratedColumn()
    id:number

    @Column()
    email:string

    @Column()
    password:string

}

