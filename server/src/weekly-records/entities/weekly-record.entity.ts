import { ApiProperty } from "@nestjs/swagger"

export class WeeklyRecord {
    @ApiProperty({required:false})
    idWeeklyRecord:number;
    @ApiProperty()
    userId:number;
    @ApiProperty()
    weekStartDate:Date;
    @ApiProperty()
    weekEndDate:Date;
    @ApiProperty()
    score:number;
    @ApiProperty()
    languageId:number;
    @ApiProperty()
    leagueId:number
}
