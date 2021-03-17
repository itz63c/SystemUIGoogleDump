class com.android.systemui.qs.tileimpl.QSTileBaseView$H extends android.os.Handler {
	 /* .source "QSTileBaseView.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Lcom/android/systemui/qs/tileimpl/QSTileBaseView; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x2 */
/* name = "H" */
} // .end annotation
/* # instance fields */
final com.android.systemui.qs.tileimpl.QSTileBaseView this$0; //synthetic
/* # direct methods */
public com.android.systemui.qs.tileimpl.QSTileBaseView$H ( ) {
/* .locals 0 */
/* .line 400 */
this.this$0 = p1;
/* .line 401 */
android.os.Looper .getMainLooper ( );
/* invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V */
return;
} // .end method
/* # virtual methods */
public void handleMessage ( android.os.Message p0 ) {
/* .locals 2 */
/* .line 406 */
/* iget v0, p1, Landroid/os/Message;->what:I */
int v1 = 1; // const/4 v1, 0x1
/* if-ne v0, v1, :cond_0 */
/* .line 407 */
p0 = this.this$0;
p1 = this.obj;
/* check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$State; */
(( com.android.systemui.qs.tileimpl.QSTileBaseView ) p0 ).handleStateChanged ( p1 ); // invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
} // :cond_0
return;
} // .end method
