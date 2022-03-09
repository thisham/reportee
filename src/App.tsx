import { Linking } from 'react-native';
import { Navigation } from 'react-native-navigation';
import { registerScreens } from './navigation';
import { AppRoute } from './navigation/screens';

registerScreens();

const App = () => {
  Navigation.events().registerAppLaunchedListener(() => {
    Linking.getInitialURL().then(async () => {
      await Navigation.setRoot({
        root: {
          stack: {
            id: 'Stack',
            children: [{ component: { name: AppRoute.LOADING } }],
            options: { topBar: { visible: false } },
          },
        },
      });
    });
  });
};

export default App;
