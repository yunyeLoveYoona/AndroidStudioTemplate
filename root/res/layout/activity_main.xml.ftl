<?xml version="1.0" encoding="utf-8"?>
<android.support.v4.widget.DrawerLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:id="@+id/drawer_layout"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:fitsSystemWindows="true">

    <RelativeLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:background="@color/white"
        android:orientation="vertical">

        <android.support.v4.widget.SwipeRefreshLayout
            android:id="@+id/refresh_layout"
            android:layout_width="match_parent"
            android:layout_height="match_parent">

            <${packageName}.MyRecyclerView
                android:id="@+id/list"
                android:layout_width="match_parent"
                android:layout_height="match_parent">

            </${packageName}.MyRecyclerView>
        </android.support.v4.widget.SwipeRefreshLayout>

        <android.support.v7.widget.Toolbar
            android:id="@+id/toolbar"
            android:layout_width="match_parent"
            android:layout_height="50dp"
            android:background="@color/colorPrimary">

        </android.support.v7.widget.Toolbar>

    </RelativeLayout>


    <android.support.design.widget.NavigationView
        android:id="@+id/navigation_view"
        android:layout_width="wrap_content"
        android:layout_height="match_parent"
        android:layout_gravity="start"
        app:itemIconTint="@color/colorPrimary"
        app:itemTextColor="@color/colorPrimary"
        app:menu="@menu/drawer" />

</android.support.v4.widget.DrawerLayout>