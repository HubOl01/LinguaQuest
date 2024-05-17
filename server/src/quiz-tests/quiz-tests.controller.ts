import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { QuizTestsService } from './quiz-tests.service';
import { CreateQuizTestDto } from './dto/create-quiz-test.dto';
import { UpdateQuizTestDto } from './dto/update-quiz-test.dto';

@Controller('quiz-tests')
export class QuizTestsController {
  constructor(private readonly quizTestsService: QuizTestsService) {}

  @Post()
  create(@Body() createQuizTestDto: CreateQuizTestDto) {
    return this.quizTestsService.create(createQuizTestDto);
  }

  @Get()
  findAll() {
    return this.quizTestsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.quizTestsService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateQuizTestDto: UpdateQuizTestDto) {
    return this.quizTestsService.update(+id, updateQuizTestDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.quizTestsService.remove(+id);
  }
}
