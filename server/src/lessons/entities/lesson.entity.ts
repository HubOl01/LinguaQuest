import { ApiProperty } from "@nestjs/swagger"
import { Lesson } from '@prisma/client';

export class LessonEntity implements Lesson{
  @ApiProperty({ required: false })
  idLesson:number;
  @ApiProperty()
  moduleId:number;
  @ApiProperty()
  title:string;
  @ApiProperty()//Без описания неясен смысл задания
  description:string;
  @ApiProperty()
  ruleId:number;
  @ApiProperty({ required: false })
  date_created:Date;
}
