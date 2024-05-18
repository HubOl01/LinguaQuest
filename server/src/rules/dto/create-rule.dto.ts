import { ApiProperty } from "@nestjs/swagger";
import { IsDate, IsString } from "class-validator";

export class CreateRuleDto {
    @ApiProperty({ required: false })
    @IsString()
    title: string;
    @ApiProperty({ required: false })
    @IsString()
    description: string;
    @ApiProperty({ required: true })
    @IsDate()
    date_created: Date;
    @ApiProperty({ required: true })
    @IsDate()
    date_updated: Date;
}