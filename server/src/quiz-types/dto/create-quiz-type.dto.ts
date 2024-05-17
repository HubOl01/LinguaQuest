import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, IsString } from "class-validator";

export class CreateQuizTypeDto {
  @ApiProperty()
  @IsString()
  @IsNotEmpty()
  type:string;
}
