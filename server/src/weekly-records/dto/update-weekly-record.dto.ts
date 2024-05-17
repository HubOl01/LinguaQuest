import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateWeeklyRecordDto } from './create-weekly-record.dto';
import { IsNumber, IsNotEmpty } from 'class-validator';

export class UpdateWeeklyRecordDto extends PartialType(CreateWeeklyRecordDto) {

    @ApiProperty({required:true})
    idWeeklyRecord:number;

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
