import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';
@Entity("provinces")
export class ProvincesEntity {
    @PrimaryGeneratedColumn()
    id:number

    @Column()
    province:string

    @Column("text")
    description:string
}

