import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.viewModels
import com.feb.myappjetpackcompose2.TaskScreen
import com.feb.myappjetpackcompose2.TaskViewModel

class MainActivity : ComponentActivity() {


    private val taskViewModel: TaskViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {

            TaskScreen(taskViewModel)
        }
    }
}
