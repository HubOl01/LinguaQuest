import { ApiProperty } from "@nestjs/swagger"

export class QuizTest {
    @ApiProperty({required:false})
    idQuizTest:number;
    @ApiProperty()
    quizId:number;
    @ApiProperty({required:false})
    answer:string;
    @ApiProperty({required:false})
    word:string;
}
