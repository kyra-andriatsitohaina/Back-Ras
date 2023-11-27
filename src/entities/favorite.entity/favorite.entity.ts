import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("favorites")
export class FavoriteEntity {
    @PrimaryGeneratedColumn()
    id:number    
    
    @Column()
    article_title:string

    @Column()
    article_id:number

    @Column()
    user: number;
}
