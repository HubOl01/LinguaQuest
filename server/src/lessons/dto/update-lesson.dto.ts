import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateLessonDto } from './create-lesson.dto';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class UpdateLessonDto extends PartialType(CreateLessonDto) {
    @ApiProperty({required:true})
    IdLesson:number;

    @ApiProperty()
    moduleId:number;
  
    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    title:string;
  
    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    description:string;
  
    @ApiProperty()//Без описания неясен смысл задания
    @IsNumber()
    @IsNotEmpty()
    ruleId:number;
  
    @ApiProperty({ required: false })
    date_created?:Date;
}
