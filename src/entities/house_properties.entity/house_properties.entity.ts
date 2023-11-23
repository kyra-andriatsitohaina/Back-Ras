import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';
@Entity("house_properties")
export class HousePropertiesEntity {
    @PrimaryGeneratedColumn()
    id:number

    @Column()
    property:string
 
}


