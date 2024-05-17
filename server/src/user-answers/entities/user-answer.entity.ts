import { ApiProperty } from "@nestjs/swagger"

export class UserAnswer {
    @ApiProperty({required:false})
    idUserAnswer:number;
    @ApiProperty({required:false})
    userId:number;
    @ApiProperty()
    quizId:number;
    @ApiProperty()
    answer:string;
    @ApiProperty()
    isCorrect:boolean;
    @ApiProperty({required:false})
    xp:number;
}
