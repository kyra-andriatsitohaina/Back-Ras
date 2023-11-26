import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity("articles")
export class ArticleEntity {
    @PrimaryGeneratedColumn()
    id:number

    @Column()
    title:string

    @Column("longtext")
    description:string

    @Column()
    price:number

    @Column("text")
    image:string
    
    @Column()
    province:string

    @Column()
    type:string

    @Column()
    category:string

    @Column()
    superficie:string

    @Column()
    chambre:string

    @Column()
    elec:boolean

    @Column()
    eau:boolean

    @Column()
    garage:boolean

    @Column()
    status:boolean

    @Column()
    contact:string

    @Column("text")
    reference:string

    @Column()
    date:string
}
