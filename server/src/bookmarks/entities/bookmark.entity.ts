import { ApiProperty } from "@nestjs/swagger";
import { Bookmark } from "@prisma/client";

export class BookmarkEntity implements Bookmark {
    @ApiProperty({ required: true })
    idBookmark: number;
    @ApiProperty({ required: false })
    userId: number;
    @ApiProperty({ required: false })
    ruleId: number;
    @ApiProperty({ required: false })
    postId: number;
    @ApiProperty({ required: true })
    date_created: Date;
}