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
    type:string//rent sale offer

    @Column()
    amenties:string //parking furnished

    @Column()
    category:string
}
