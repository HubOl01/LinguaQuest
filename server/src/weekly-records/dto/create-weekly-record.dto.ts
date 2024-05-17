import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, IsNumber } from "class-validator";

export class CreateWeeklyRecordDto {

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    userId:number;

    @ApiProperty()
    @IsNotEmpty()
    weekStartDate:Date;

    @ApiProperty()
    @IsNotEmpty()
    weekEndDate:Date;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    score:number;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    languageId:number;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    leagueId:number
}
