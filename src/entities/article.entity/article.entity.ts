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
    type:string//rent sale offer

    @Column()
    category:string//maison terrain

    @Column()
    date:string
}
