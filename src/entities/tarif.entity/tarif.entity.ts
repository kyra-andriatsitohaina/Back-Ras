import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("tarifs")
export class TarifEntity {
    @PrimaryGeneratedColumn()
    id:number

    @Column()
    validity:number

    @Column()
    tarif:number
}
