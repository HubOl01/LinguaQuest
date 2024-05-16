import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreateLessonDto {
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
