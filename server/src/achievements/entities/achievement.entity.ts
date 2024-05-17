import { ApiProperty } from "@nestjs/swagger"

export class Achievement {
    @ApiProperty({required:false})
    idAchievement:number;
    @ApiProperty()
    userId:number;
    @ApiProperty()
    name:string;
    @ApiProperty()
    url_image:string;
    @ApiProperty()
    description:string;
    @ApiProperty({required:false})
    date_created:Date;
}
