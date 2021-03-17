public class com.android.systemui.qs.tileimpl.QSTileImpl$ResourceIcon extends com.android.systemui.plugins.qs.QSTile$Icon {
	 /* .source "QSTileImpl.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "ResourceIcon" */
} // .end annotation
/* # static fields */
private static final android.util.SparseArray ICONS;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/util/SparseArray<", */
/* "Lcom/android/systemui/plugins/qs/QSTile$Icon;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
/* # instance fields */
protected final Integer mResId;
/* # direct methods */
static com.android.systemui.qs.tileimpl.QSTileImpl$ResourceIcon ( ) {
/* .locals 1 */
/* .line 701 */
/* new-instance v0, Landroid/util/SparseArray; */
/* invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V */
return;
} // .end method
private com.android.systemui.qs.tileimpl.QSTileImpl$ResourceIcon ( ) {
/* .locals 0 */
/* .line 705 */
/* invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V */
/* .line 706 */
/* iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I */
return;
} // .end method
public static synchronized com.android.systemui.plugins.qs.QSTile$Icon get ( Integer p0 ) {
/* .locals 3 */
/* const-class v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon; */
/* monitor-enter v0 */
/* .line 710 */
try { // :try_start_0
v1 = com.android.systemui.qs.tileimpl.QSTileImpl$ResourceIcon.ICONS;
(( android.util.SparseArray ) v1 ).get ( p0 ); // invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
/* check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$Icon; */
/* if-nez v2, :cond_0 */
/* .line 712 */
/* new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon; */
/* invoke-direct {v2, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;-><init>(I)V */
/* .line 713 */
(( android.util.SparseArray ) v1 ).put ( p0, v2 ); // invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* .line 715 */
} // :cond_0
/* monitor-exit v0 */
/* :catchall_0 */
/* move-exception p0 */
/* monitor-exit v0 */
/* throw p0 */
} // .end method
/* # virtual methods */
public Boolean equals ( java.lang.Object p0 ) {
/* .locals 1 */
/* .line 730 */
/* instance-of v0, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* check-cast p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon; */
/* iget p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I */
/* iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I */
/* if-ne p1, p0, :cond_0 */
int p0 = 1; // const/4 p0, 0x1
} // :cond_0
int p0 = 0; // const/4 p0, 0x0
} // :goto_0
} // .end method
public android.graphics.drawable.Drawable getDrawable ( android.content.Context p0 ) {
/* .locals 0 */
/* .line 720 */
/* iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I */
(( android.content.Context ) p1 ).getDrawable ( p0 ); // invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
} // .end method
public android.graphics.drawable.Drawable getInvisibleDrawable ( android.content.Context p0 ) {
/* .locals 0 */
/* .line 725 */
/* iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I */
(( android.content.Context ) p1 ).getDrawable ( p0 ); // invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
} // .end method
public java.lang.String toString ( ) {
/* .locals 2 */
int v0 = 1; // const/4 v0, 0x1
/* new-array v0, v0, [Ljava/lang/Object; */
/* .line 736 */
/* iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I */
java.lang.Integer .valueOf ( p0 );
int v1 = 0; // const/4 v1, 0x0
/* aput-object p0, v0, v1 */
final String p0 = "ResourceIcon[resId=0x%08x]"; // const-string p0, "ResourceIcon[resId=0x%08x]"
java.lang.String .format ( p0,v0 );
} // .end method
