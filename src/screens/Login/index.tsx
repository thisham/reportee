import React from 'react';
import { Button, Text } from 'react-native';
import { Navigation } from 'react-native-navigation';

export default function LoginScreen() {
  const goBackHandler = () => Navigation.pop('Stack');
  return (
    <>
      <Text>heytayo login</Text>
      <Button title="Balik" onPress={goBackHandler} />
    </>
  );
}
