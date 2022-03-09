import React from 'react';
import { Button, Text } from 'react-native';
import { Navigation } from 'react-native-navigation';
import { AppScreen } from '../../navigation';
import { AppRoute } from '../../navigation/screens';

const HomeScreen: AppScreen<AppRoute.HOME> = () => {
  const buttonPressHandler = () =>
    Navigation.push('Stack', {
      component: {
        id: AppRoute.LOGIN,
        name: AppRoute.LOGIN,
      },
    });

  return (
    <>
      <Text>heytayo</Text>
      <Button title="Login" onPress={buttonPressHandler} />
    </>
  );
};

export default HomeScreen;
