import { Entity, PrimaryGeneratedColumn, Column} from 'typeorm';

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
    category:string

    @Column()
    superficie:string

    @Column()
    chambre:string

    @Column()
    access:string

    @Column({type:"enum",enum:{OUI:"oui",NON:"non"},default:"non"})
    elec:boolean

    @Column({type:"enum",enum:{OUI:"oui",NON:"non"},default:"non"})
    eau:boolean

    @Column({type:"enum",enum:{OUI:"oui",NON:"non"},default:"non"})
    garage:boolean

    @Column({type:"enum",enum:{OUI:"oui",NON:"non"},default:"non"})
    status:boolean

    @Column()
    contact:string

    @Column()
    type:string

    @Column()
    tel_transfert:string

    @Column("text")
    reference:string

    @Column()
    name:string

    @Column()
    userId: number
    
    @Column()
    favorite:number

    @Column({default:0})
    date_publication:string

    @Column({default:0})
    fin_validation:string

    @Column({default:0})
    validation:number

    
}
