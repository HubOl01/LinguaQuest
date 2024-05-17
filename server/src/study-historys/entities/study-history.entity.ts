import { ApiProperty } from "@nestjs/swagger"

export class StudyHistory {
    @ApiProperty({required:false})
    idStudyHistory:number;
    @ApiProperty()
    userId:number;
    @ApiProperty()
    moduleId:number;
    @ApiProperty()
    languageId:number;
    @ApiProperty()
    lessonId:number;
    @ApiProperty()
    score:number;
    @ApiProperty({required:false})
    date_created:Date;
}
