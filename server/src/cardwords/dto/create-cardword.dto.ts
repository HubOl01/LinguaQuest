import { ApiProperty } from "@nestjs/swagger"
import { IsBoolean, IsDate, IsNumber } from "class-validator"

export class CreateCardwordDto {

    @ApiProperty({ required: false })
    @IsNumber()
    dictionaryId: number;
    @ApiProperty({ required: false })
    @IsBoolean()
    isCorrect: boolean;
    @ApiProperty({ required: false })
    @IsNumber()
    userId: number;
    @ApiProperty({ required: true })
    @IsDate()
    date_created: Date;
}
