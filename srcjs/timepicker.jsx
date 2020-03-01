import { reactShinyInput } from 'reactR';
import TimePicker from 'react-time-picker';

const TimepickerInput = ({ configuration, value, setValue }) => {
  return <TimePicker onChange={newTime => setValue(newTime)}
                     value={value}
                     { ...configuration } />
};

reactShinyInput('.timepicker', 'timepickerInput.timepicker', TimepickerInput);
