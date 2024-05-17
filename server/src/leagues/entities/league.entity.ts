import { ApiProperty } from "@nestjs/swagger"

export class League {
    @ApiProperty({required:false})
    idLeague:number;
    @ApiProperty()
    name:string;
    @ApiProperty({required:false})      // Для максимального уровня нет минимального опыта для перехода
    minXP:number;
    @ApiProperty({required:false})
    date_created:Date;
}
