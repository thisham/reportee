import React from 'react';
import { Navigation } from 'react-native-navigation';
import { AppRoute, AppRouteParams } from './screens';

// screens
import HomeScreen from '../screens/Home';
import LoginScreen from '../screens/Login';

export type AppScreen<Route extends AppRoute> = React.FC<{
  params: AppRouteParams[Route];
}>;

export function registerScreens() {
  Navigation.registerComponent(AppRoute.LOADING, () => HomeScreen);
  Navigation.registerComponent(AppRoute.HOME, () => HomeScreen);
  Navigation.registerComponent(AppRoute.LOGIN, () => LoginScreen);
}
