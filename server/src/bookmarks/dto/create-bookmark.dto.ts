import { ApiProperty } from "@nestjs/swagger";
import { IsDate, IsNumber } from "class-validator";

export class CreateBookmarkDto {

    @ApiProperty({ required: false })
    @IsNumber()
    userId: number;
    @ApiProperty({ required: false })
    @IsNumber()
    ruleId: number;
    @ApiProperty({ required: false })
    @IsNumber()
    postId: number;
    @ApiProperty({ required: true })
    @IsDate()
    date_created: Date;
}