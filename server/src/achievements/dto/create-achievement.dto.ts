import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreateAchievementDto {

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    userId:number;

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    name:string;
    
    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    url_image:string;

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    description:string;

    @ApiProperty({required:false})
    date_created?:Date;
}
