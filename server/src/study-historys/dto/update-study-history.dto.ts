import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateStudyHistoryDto } from './create-study-history.dto';
import { IsNumber, IsNotEmpty } from 'class-validator';

export class UpdateStudyHistoryDto extends PartialType(CreateStudyHistoryDto) {
    @ApiProperty({required:true})
    idStudyHistory:number;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    userId:number;
    
    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    moduleId:number;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    languageId:number;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    lessonId:number;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    score:number;

    @ApiProperty()
    date_created?:Date;
}
