import { reactShinyInput } from 'reactR';
import TimePicker from 'react-time-picker';

const TimepickerInput = ({ configuration, value, setValue }) => {
  return <TimePicker disableClock={true}
                     format="HH:mm"
                     onChange={newTime => setValue(newTime)}
                     value={value} />
};

reactShinyInput('.timepicker', 'timepickerInput.timepicker', TimepickerInput);
