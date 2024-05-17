import { ApiProperty } from "@nestjs/swagger"

export class QuizType {
  @ApiProperty({required:false})
  idQuizType:number;
  @ApiProperty()
  type:string
}
