package ${packageName};

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.design.widget.NavigationView;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;


public class ${activityClass} extends AppCompatActivity implements ParallaxRecyclerAdapter.OnParallaxScroll, MyRecyclerView.OnLoadMoreListener, SwipeRefreshLayout.OnRefreshListener {
    private MyRecyclerView mRecyclerView;
    private boolean isNormalAdapter = false;
    private Toolbar mToolbar;
    private SwipeRefreshLayout swipeRefreshLayout;
    private DrawerLayout mDrawerLayout;
    private ActionBarDrawerToggle mDrawerToggle;
    public NavigationView mNavigationView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mToolbar = (Toolbar) findViewById(R.id.toolbar);
        mToolbar.setTitleTextColor(getResources().getColor(android.R.color.white));
        setSupportActionBar(mToolbar);
        mDrawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        mDrawerToggle = new ActionBarDrawerToggle(this, mDrawerLayout, mToolbar, R.string.drawer_open,
                R.string.drawer_close);
        mDrawerToggle.syncState();
        mDrawerLayout.addDrawerListener(mDrawerToggle);
        mRecyclerView = (MyRecyclerView) findViewById(R.id.list);
        mRecyclerView.setOnLoadMoreListener(this);
        swipeRefreshLayout = (SwipeRefreshLayout) findViewById(R.id.refresh_layout);
        swipeRefreshLayout.setOnRefreshListener(this);
        mNavigationView = (NavigationView) findViewById(R.id.navigation_view);
		setUpProfileImage();
    }


	 private void setUpProfileImage() {
        View headerView = mNavigationView.inflateHeaderView(R.layout.navigation_header);
    }
	
    @Override
    public void onParallaxScroll(float percentage, float offset, View parallax) {
        Drawable c = mToolbar.getBackground();
        c.setAlpha(Math.round(percentage * 255));
        mToolbar.setBackground(c);
        if (percentage == 0) {
            mToolbar.setTitle("");
        } else {
            mToolbar.setTitle("${titleName}");
        }
    }


    @Override
    public void onRefresh() {

    }


    @Override
    public void onLoadMore() {

    }
}
