import { ApiProperty } from "@nestjs/swagger";
import { CardWord } from "@prisma/client";

export class CardwordEntity implements CardWord {
    @ApiProperty({ required: true })
    idCardWord: number;
    @ApiProperty({ required: false })
    dictionaryId: number;
    @ApiProperty({ required: false })
    isCorrect: boolean;
    @ApiProperty({ required: false })
    userId: number;
    @ApiProperty({ required: true })
    date_created: Date;
}