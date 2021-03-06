package vggames.html

import vggames.shared.GameView
import vggames.shared.Game
import vggames.shared.task.JudgedTask
import scalatags.Text.all._
import vggames.shared.GameResourceId
import vggames.shared.task.Exercise

class HtmlGameView extends GameView {

  def render(game: Game, task: Exercise, judgedTask: Option[JudgedTask], lastAttempt: String) = {

    val prefill = task.extraData.asInstanceOf[Option[String]].getOrElse("")

    div(cls := "row")(
      div(cls := "span6")(

        iframe(id := "render-challenge", cls := "game-frame")(raw("")),

        div(id := "challenge-result")(raw("")),
        multiLineChallengeForm(game, task, prefill, true, "disabled"),
        progressBar(task, game)),

      div(cls := "span6")(
        iframe(id := "render-answer", cls := "game-frame", src := s"/play/html/resource/${task.resource}?v=${GameResourceId.id}")(""),

        h2(task.groupName),
        raw(task.description))).toString
  }
}
