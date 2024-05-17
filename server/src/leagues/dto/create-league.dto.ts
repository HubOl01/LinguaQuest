import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, IsString } from "class-validator";

export class CreateLeagueDto {

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    name:string;
    
    @ApiProperty({required:false})
    minXP:number;
    
    @ApiProperty({required:false})
    date_created:Date;
}
