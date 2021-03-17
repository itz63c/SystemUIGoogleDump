public abstract class com.android.systemui.qs.tileimpl.QSTileImpl implements com.android.systemui.plugins.qs.QSTile implements androidx.lifecycle.LifecycleOwner implements com.android.systemui.Dumpable {
	 /* .source "QSTileImpl.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;, */
	 /* Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;, */
	 /* Lcom/android/systemui/qs/tileimpl/QSTileImpl$H; */
	 /* } */
} // .end annotation
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "<TState:", */
/* "Lcom/android/systemui/plugins/qs/QSTile$State;", */
/* ">", */
/* "Ljava/lang/Object;", */
/* "Lcom/android/systemui/plugins/qs/QSTile;", */
/* "Landroidx/lifecycle/LifecycleOwner;", */
/* "Lcom/android/systemui/Dumpable;" */
/* } */
} // .end annotation
/* # static fields */
protected static final java.lang.Object ARG_SHOW_TRANSIENT_ENABLING;
protected static final Boolean DEBUG;
/* # instance fields */
protected final java.lang.String TAG;
protected final com.android.systemui.plugins.ActivityStarter mActivityStarter;
private Boolean mAnnounceNextStateChange;
private final java.util.ArrayList mCallbacks;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList<", */
/* "Lcom/android/systemui/plugins/qs/QSTile$Callback;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
protected final android.content.Context mContext;
private com.android.settingslib.RestrictedLockUtils$EnforcedAdmin mEnforcedAdmin;
protected final com.android.systemui.qs.tileimpl.QSTileImpl$H mHandler;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Lcom/android/systemui/qs/tileimpl/QSTileImpl<", */
/* "TTState;>.H;" */
/* } */
} // .end annotation
} // .end field
protected final com.android.systemui.qs.QSHost mHost;
private final com.android.internal.logging.InstanceId mInstanceId;
private Integer mIsFullQs;
private final androidx.lifecycle.LifecycleRegistry mLifecycle;
private final android.util.ArraySet mListeners;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/util/ArraySet<", */
/* "Ljava/lang/Object;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final com.android.internal.logging.MetricsLogger mMetricsLogger;
private final com.android.systemui.qs.logging.QSLogger mQSLogger;
private volatile Integer mReadyState;
private Boolean mShowingDetail;
private final java.lang.Object mStaleListener;
protected com.android.systemui.plugins.qs.QSTile$State mState;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "TTState;" */
/* } */
} // .end annotation
} // .end field
private final com.android.systemui.plugins.statusbar.StatusBarStateController mStatusBarStateController;
private java.lang.String mTileSpec;
private com.android.systemui.plugins.qs.QSTile$State mTmpState;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "TTState;" */
/* } */
} // .end annotation
} // .end field
private final com.android.internal.logging.UiEventLogger mUiEventLogger;
protected final android.os.Handler mUiHandler;
/* # direct methods */
public static void $r8$lambda$3uKFUQSnmdOuhXykiztOtCMfJqs ( com.android.systemui.qs.tileimpl.QSTileImpl p0 ) { //synthethic
/* .locals 0 */
/* invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->lambda$handleDestroy$3()V */
return;
} // .end method
public static void $r8$lambda$a1oEqk3pmNFOBUDdiI8l-P4TBEQ ( com.android.systemui.qs.tileimpl.QSTileImpl p0 ) { //synthethic
/* .locals 0 */
/* invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->lambda$handleSetListeningInternal$1()V */
return;
} // .end method
public static void $r8$lambda$e-cBBTyS1RezsenZ9WhR4oHkA5k ( com.android.systemui.qs.tileimpl.QSTileImpl p0 ) { //synthethic
/* .locals 0 */
/* invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->lambda$handleSetListeningInternal$2()V */
return;
} // .end method
public static void $r8$lambda$r2OLczPmk2v7I3E-ku4iiKwTDsA ( com.android.systemui.qs.tileimpl.QSTileImpl p0 ) { //synthethic
/* .locals 0 */
/* invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->lambda$new$0()V */
return;
} // .end method
static com.android.systemui.qs.tileimpl.QSTileImpl ( ) {
/* .locals 2 */
final String v0 = "Tile"; // const-string v0, "Tile"
int v1 = 3; // const/4 v1, 0x3
/* .line 87 */
v0 = android.util.Log .isLoggable ( v0,v1 );
com.android.systemui.qs.tileimpl.QSTileImpl.DEBUG = (v0!= 0);
/* .line 90 */
/* new-instance v0, Ljava/lang/Object; */
/* invoke-direct {v0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
protected com.android.systemui.qs.tileimpl.QSTileImpl ( ) {
/* .locals 2 */
/* .line 166 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 86 */
/* new-instance v0, Ljava/lang/StringBuilder; */
/* invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V */
final String v1 = "Tile."; // const-string v1, "Tile."
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.Object ) p0 ).getClass ( ); // invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
(( java.lang.Class ) v1 ).getSimpleName ( ); // invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
this.TAG = v0;
/* .line 101 */
/* new-instance v0, Landroid/util/ArraySet; */
/* invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V */
this.mListeners = v0;
/* .line 109 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mCallbacks = v0;
/* .line 110 */
/* new-instance v0, Ljava/lang/Object; */
/* invoke-direct {v0}, Ljava/lang/Object;-><init>()V */
this.mStaleListener = v0;
/* .line 121 */
/* new-instance v0, Landroidx/lifecycle/LifecycleRegistry; */
/* invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V */
this.mLifecycle = v0;
/* .line 167 */
this.mHost = p1;
/* .line 168 */
this.mContext = v0;
/* .line 169 */
this.mInstanceId = v0;
/* .line 170 */
this.mUiEventLogger = p1;
/* .line 172 */
this.mUiHandler = p3;
/* .line 173 */
/* new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H; */
/* invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V */
this.mHandler = p1;
/* .line 174 */
this.mQSLogger = p7;
/* .line 175 */
this.mMetricsLogger = p4;
/* .line 176 */
this.mStatusBarStateController = p5;
/* .line 177 */
this.mActivityStarter = p6;
/* .line 179 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).newTileState ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
this.mState = p1;
/* .line 180 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).newTileState ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
this.mTmpState = p1;
/* .line 181 */
/* new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl-$$ExternalSyntheticLambda3; */
/* invoke-direct {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V */
(( android.os.Handler ) p3 ).post ( p1 ); // invoke-virtual {p3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return;
} // .end method
static void access$000 ( com.android.systemui.qs.tileimpl.QSTileImpl p0, com.android.systemui.plugins.qs.QSTile$Callback p1 ) { //synthethic
/* .locals 0 */
/* .line 85 */
/* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleAddCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V */
return;
} // .end method
static void access$100 ( com.android.systemui.qs.tileimpl.QSTileImpl p0 ) { //synthethic
/* .locals 0 */
/* .line 85 */
/* invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRemoveCallbacks()V */
return;
} // .end method
static void access$200 ( com.android.systemui.qs.tileimpl.QSTileImpl p0, com.android.systemui.plugins.qs.QSTile$Callback p1 ) { //synthethic
/* .locals 0 */
/* .line 85 */
/* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRemoveCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V */
return;
} // .end method
static com.android.settingslib.RestrictedLockUtils$EnforcedAdmin access$300 ( com.android.systemui.qs.tileimpl.QSTileImpl p0 ) { //synthethic
/* .locals 0 */
/* .line 85 */
p0 = this.mEnforcedAdmin;
} // .end method
static void access$400 ( com.android.systemui.qs.tileimpl.QSTileImpl p0, Boolean p1 ) { //synthethic
/* .locals 0 */
/* .line 85 */
/* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleShowDetail(Z)V */
return;
} // .end method
static void access$500 ( com.android.systemui.qs.tileimpl.QSTileImpl p0, Boolean p1 ) { //synthethic
/* .locals 0 */
/* .line 85 */
/* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleToggleStateChanged(Z)V */
return;
} // .end method
static void access$600 ( com.android.systemui.qs.tileimpl.QSTileImpl p0, Boolean p1 ) { //synthethic
/* .locals 0 */
/* .line 85 */
/* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleScanStateChanged(Z)V */
return;
} // .end method
static void access$700 ( com.android.systemui.qs.tileimpl.QSTileImpl p0, java.lang.Object p1, Boolean p2 ) { //synthethic
/* .locals 0 */
/* .line 85 */
/* invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListeningInternal(Ljava/lang/Object;Z)V */
return;
} // .end method
public static Integer getColorForState ( android.content.Context p0, Integer p1 ) {
/* .locals 2 */
/* const v0, 0x1010038 */
if ( p1 != null) { // if-eqz p1, :cond_2
int v1 = 1; // const/4 v1, 0x1
/* if-eq p1, v1, :cond_1 */
int v0 = 2; // const/4 v0, 0x2
/* if-eq p1, v0, :cond_0 */
/* .line 564 */
/* new-instance p0, Ljava/lang/StringBuilder; */
/* invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V */
final String v0 = "Invalid state "; // const-string v0, "Invalid state "
(( java.lang.StringBuilder ) p0 ).append ( v0 ); // invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) p0 ).append ( p1 ); // invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) p0 ).toString ( ); // invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
final String p1 = "QSTile"; // const-string p1, "QSTile"
android.util.Log .e ( p1,p0 );
int p0 = 0; // const/4 p0, 0x0
} // :cond_0
/* const p1, 0x1010433 */
/* .line 562 */
p0 = com.android.settingslib.Utils .getColorAttrDefaultColor ( p0,p1 );
/* .line 560 */
} // :cond_1
p0 = com.android.settingslib.Utils .getColorAttrDefaultColor ( p0,v0 );
/* .line 558 */
} // :cond_2
p1 = com.android.settingslib.Utils .getColorAttrDefaultColor ( p0,v0 );
/* .line 557 */
p0 = com.android.settingslib.Utils .getDisabled ( p0,p1 );
} // .end method
private void handleAddCallback ( com.android.systemui.plugins.qs.QSTile$Callback p0 ) {
/* .locals 1 */
/* .line 354 */
v0 = this.mCallbacks;
(( java.util.ArrayList ) v0 ).add ( p1 ); // invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 355 */
p0 = this.mState;
return;
} // .end method
private void handleRemoveCallback ( com.android.systemui.plugins.qs.QSTile$Callback p0 ) {
/* .locals 0 */
/* .line 359 */
p0 = this.mCallbacks;
(( java.util.ArrayList ) p0 ).remove ( p1 ); // invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
return;
} // .end method
private void handleRemoveCallbacks ( ) {
/* .locals 0 */
/* .line 363 */
p0 = this.mCallbacks;
(( java.util.ArrayList ) p0 ).clear ( ); // invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
return;
} // .end method
private void handleScanStateChanged ( Boolean p0 ) {
/* .locals 2 */
int v0 = 0; // const/4 v0, 0x0
/* .line 449 */
} // :goto_0
v1 = this.mCallbacks;
v1 = (( java.util.ArrayList ) v1 ).size ( ); // invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
/* if-ge v0, v1, :cond_0 */
/* .line 450 */
v1 = this.mCallbacks;
(( java.util.ArrayList ) v1 ).get ( v0 ); // invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback; */
/* add-int/lit8 v0, v0, 0x1 */
} // :cond_0
return;
} // .end method
private void handleSetListeningInternal ( java.lang.Object p0, Boolean p1 ) {
/* .locals 1 */
if ( p2 != null) { // if-eqz p2, :cond_1
/* .line 462 */
v0 = this.mListeners;
p1 = (( android.util.ArraySet ) v0 ).add ( p1 ); // invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
if ( p1 != null) { // if-eqz p1, :cond_3
p1 = this.mListeners;
p1 = (( android.util.ArraySet ) p1 ).size ( ); // invoke-virtual {p1}, Landroid/util/ArraySet;->size()I
int v0 = 1; // const/4 v0, 0x1
/* if-ne p1, v0, :cond_3 */
/* .line 463 */
/* sget-boolean p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z */
if ( p1 != null) { // if-eqz p1, :cond_0
p1 = this.TAG;
final String v0 = "handleSetListening true"; // const-string v0, "handleSetListening true"
android.util.Log .d ( p1,v0 );
/* .line 464 */
} // :cond_0
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).handleSetListening ( p2 ); // invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V
/* .line 465 */
p1 = this.mUiHandler;
/* new-instance p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl-$$ExternalSyntheticLambda1; */
/* invoke-direct {p2, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V */
(( android.os.Handler ) p1 ).post ( p2 ); // invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
/* .line 477 */
} // :cond_1
v0 = this.mListeners;
p1 = (( android.util.ArraySet ) v0 ).remove ( p1 ); // invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
if ( p1 != null) { // if-eqz p1, :cond_3
p1 = this.mListeners;
p1 = (( android.util.ArraySet ) p1 ).size ( ); // invoke-virtual {p1}, Landroid/util/ArraySet;->size()I
/* if-nez p1, :cond_3 */
/* .line 478 */
/* sget-boolean p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z */
if ( p1 != null) { // if-eqz p1, :cond_2
p1 = this.TAG;
final String v0 = "handleSetListening false"; // const-string v0, "handleSetListening false"
android.util.Log .d ( p1,v0 );
/* .line 479 */
} // :cond_2
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).handleSetListening ( p2 ); // invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V
/* .line 480 */
p1 = this.mUiHandler;
/* new-instance p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl-$$ExternalSyntheticLambda2; */
/* invoke-direct {p2, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V */
(( android.os.Handler ) p1 ).post ( p2 ); // invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
/* .line 487 */
} // :cond_3
} // :goto_0
/* invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->updateIsFullQs()V */
return;
} // .end method
private void handleShowDetail ( Boolean p0 ) {
/* .locals 2 */
/* .line 432 */
/* iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z */
int v0 = 0; // const/4 v0, 0x0
/* .line 433 */
} // :goto_0
v1 = this.mCallbacks;
v1 = (( java.util.ArrayList ) v1 ).size ( ); // invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
/* if-ge v0, v1, :cond_0 */
/* .line 434 */
v1 = this.mCallbacks;
(( java.util.ArrayList ) v1 ).get ( v0 ); // invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback; */
/* add-int/lit8 v0, v0, 0x1 */
} // :cond_0
return;
} // .end method
private void handleStateChanged ( ) {
/* .locals 5 */
/* .line 408 */
v0 = (( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).shouldAnnouncementBeDelayed ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->shouldAnnouncementBeDelayed()Z
/* .line 409 */
v1 = this.mCallbacks;
v1 = (( java.util.ArrayList ) v1 ).size ( ); // invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
int v2 = 0; // const/4 v2, 0x0
if ( v1 != null) { // if-eqz v1, :cond_1
/* move v1, v2 */
/* .line 410 */
} // :goto_0
v3 = this.mCallbacks;
v3 = (( java.util.ArrayList ) v3 ).size ( ); // invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
/* if-ge v1, v3, :cond_0 */
/* .line 411 */
v3 = this.mCallbacks;
(( java.util.ArrayList ) v3 ).get ( v1 ); // invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$Callback; */
v4 = this.mState;
/* add-int/lit8 v1, v1, 0x1 */
/* .line 413 */
} // :cond_0
/* iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z */
if ( v1 != null) { // if-eqz v1, :cond_1
/* if-nez v0, :cond_1 */
/* .line 414 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).composeChangeAnnouncement ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->composeChangeAnnouncement()Ljava/lang/String;
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 416 */
v3 = this.mCallbacks;
(( java.util.ArrayList ) v3 ).get ( v2 ); // invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$Callback; */
/* .line 420 */
} // :cond_1
/* iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z */
if ( v1 != null) { // if-eqz v1, :cond_2
if ( v0 != null) { // if-eqz v0, :cond_2
int v2 = 1; // const/4 v2, 0x1
} // :cond_2
/* iput-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z */
return;
} // .end method
private void handleToggleStateChanged ( Boolean p0 ) {
/* .locals 2 */
int v0 = 0; // const/4 v0, 0x0
/* .line 443 */
} // :goto_0
v1 = this.mCallbacks;
v1 = (( java.util.ArrayList ) v1 ).size ( ); // invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
/* if-ge v0, v1, :cond_0 */
/* .line 444 */
v1 = this.mCallbacks;
(( java.util.ArrayList ) v1 ).get ( v0 ); // invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback; */
/* add-int/lit8 v0, v0, 0x1 */
} // :cond_0
return;
} // .end method
private void lambda$handleDestroy$3 ( ) { //synthethic
/* .locals 1 */
/* .line 517 */
p0 = this.mLifecycle;
v0 = androidx.lifecycle.Lifecycle$State.DESTROYED;
(( androidx.lifecycle.LifecycleRegistry ) p0 ).setCurrentState ( v0 ); // invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
return;
} // .end method
private void lambda$handleSetListeningInternal$1 ( ) { //synthethic
/* .locals 2 */
/* .line 468 */
v0 = this.mLifecycle;
(( androidx.lifecycle.LifecycleRegistry ) v0 ).getCurrentState ( ); // invoke-virtual {v0}, Landroidx/lifecycle/LifecycleRegistry;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;
v1 = androidx.lifecycle.Lifecycle$State.DESTROYED;
v0 = (( java.lang.Enum ) v0 ).equals ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z
if ( v0 != null) { // if-eqz v0, :cond_0
return;
/* .line 469 */
} // :cond_0
v0 = this.mLifecycle;
v1 = androidx.lifecycle.Lifecycle$State.RESUMED;
(( androidx.lifecycle.LifecycleRegistry ) v0 ).setCurrentState ( v1 ); // invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
/* .line 470 */
/* iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I */
/* if-nez v0, :cond_1 */
int v0 = 1; // const/4 v0, 0x1
/* .line 471 */
/* iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I */
/* .line 473 */
} // :cond_1
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).refreshState ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V
return;
} // .end method
private void lambda$handleSetListeningInternal$2 ( ) { //synthethic
/* .locals 2 */
/* .line 482 */
v0 = this.mLifecycle;
(( androidx.lifecycle.LifecycleRegistry ) v0 ).getCurrentState ( ); // invoke-virtual {v0}, Landroidx/lifecycle/LifecycleRegistry;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;
v1 = androidx.lifecycle.Lifecycle$State.DESTROYED;
v0 = (( java.lang.Enum ) v0 ).equals ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z
if ( v0 != null) { // if-eqz v0, :cond_0
return;
/* .line 483 */
} // :cond_0
p0 = this.mLifecycle;
v0 = androidx.lifecycle.Lifecycle$State.STARTED;
(( androidx.lifecycle.LifecycleRegistry ) p0 ).setCurrentState ( v0 ); // invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
return;
} // .end method
private void lambda$new$0 ( ) { //synthethic
/* .locals 1 */
/* .line 181 */
p0 = this.mLifecycle;
v0 = androidx.lifecycle.Lifecycle$State.CREATED;
(( androidx.lifecycle.LifecycleRegistry ) p0 ).setCurrentState ( v0 ); // invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
return;
} // .end method
private void updateIsFullQs ( ) {
/* .locals 3 */
/* .line 491 */
v0 = this.mListeners;
(( android.util.ArraySet ) v0 ).iterator ( ); // invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;
v1 = } // :cond_0
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 492 */
/* const-class v2, Lcom/android/systemui/qs/PagedTileLayout$TilePage; */
(( java.lang.Object ) v1 ).getClass ( ); // invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
v1 = (( java.lang.Object ) v2 ).equals ( v1 ); // invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
if ( v1 != null) { // if-eqz v1, :cond_0
int v0 = 1; // const/4 v0, 0x1
/* .line 493 */
/* iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I */
return;
} // :cond_1
int v0 = 0; // const/4 v0, 0x0
/* .line 497 */
/* iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I */
return;
} // .end method
/* # virtual methods */
public void addCallback ( com.android.systemui.plugins.qs.QSTile$Callback p0 ) {
/* .locals 1 */
/* .line 259 */
p0 = this.mHandler;
int v0 = 1; // const/4 v0, 0x1
(( android.os.Handler ) p0 ).obtainMessage ( v0, p1 ); // invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
(( android.os.Message ) p0 ).sendToTarget ( ); // invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
return;
} // .end method
protected void checkIfRestrictionEnforcedByAdminOnly ( com.android.systemui.plugins.qs.QSTile$State p0, java.lang.String p1 ) {
/* .locals 3 */
/* .line 522 */
v0 = this.mContext;
v1 = this.mHost;
v1 = /* .line 523 */
/* .line 522 */
com.android.settingslib.RestrictedLockUtilsInternal .checkIfRestrictionEnforced ( v0,p2,v1 );
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 524 */
v1 = this.mContext;
v2 = this.mHost;
v2 = /* .line 525 */
/* .line 524 */
p2 = com.android.settingslib.RestrictedLockUtilsInternal .hasBaseUserRestriction ( v1,p2,v2 );
/* if-nez p2, :cond_0 */
int p2 = 1; // const/4 p2, 0x1
/* .line 526 */
/* iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z */
/* .line 527 */
this.mEnforcedAdmin = v0;
} // :cond_0
int p2 = 0; // const/4 p2, 0x0
/* .line 529 */
/* iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z */
int p1 = 0; // const/4 p1, 0x0
/* .line 530 */
this.mEnforcedAdmin = p1;
} // :goto_0
return;
} // .end method
public void click ( ) {
/* .locals 5 */
/* .line 271 */
v0 = this.mMetricsLogger;
/* new-instance v1, Landroid/metrics/LogMaker; */
/* const/16 v2, 0x39d */
/* invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V */
int v2 = 4; // const/4 v2, 0x4
(( android.metrics.LogMaker ) v1 ).setType ( v2 ); // invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;
v2 = this.mStatusBarStateController;
v2 = /* .line 273 */
java.lang.Integer .valueOf ( v2 );
/* const/16 v3, 0x638 */
/* .line 272 */
(( android.metrics.LogMaker ) v1 ).addTaggedData ( v3, v2 ); // invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;
/* .line 271 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).populate ( v1 ); // invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
(( com.android.internal.logging.MetricsLogger ) v0 ).write ( v1 ); // invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V
/* .line 274 */
v0 = this.mUiEventLogger;
v1 = com.android.systemui.qs.QSEvent.QS_ACTION_CLICK;
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).getMetricsSpec ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;
/* .line 275 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).getInstanceId ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getInstanceId()Lcom/android/internal/logging/InstanceId;
int v4 = 0; // const/4 v4, 0x0
/* .line 274 */
/* .line 276 */
v0 = this.mQSLogger;
v1 = this.mTileSpec;
v2 = v2 = this.mStatusBarStateController;
v3 = this.mState;
/* iget v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
(( com.android.systemui.qs.logging.QSLogger ) v0 ).logTileClick ( v1, v2, v3 ); // invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/logging/QSLogger;->logTileClick(Ljava/lang/String;II)V
/* .line 277 */
p0 = this.mHandler;
int v0 = 2; // const/4 v0, 0x2
(( android.os.Handler ) p0 ).sendEmptyMessage ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return;
} // .end method
protected java.lang.String composeChangeAnnouncement ( ) {
/* .locals 0 */
int p0 = 0; // const/4 p0, 0x0
} // .end method
public com.android.systemui.plugins.qs.QSIconView createTileView ( android.content.Context p0 ) {
/* .locals 0 */
/* .line 236 */
/* new-instance p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl; */
/* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V */
} // .end method
public void destroy ( ) {
/* .locals 1 */
/* .line 340 */
p0 = this.mHandler;
/* const/16 v0, 0xa */
(( android.os.Handler ) p0 ).sendEmptyMessage ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return;
} // .end method
public void dump ( java.io.FileDescriptor p0, java.io.PrintWriter p1, java.lang.String[] p2 ) {
/* .locals 0 */
/* .line 768 */
/* new-instance p1, Ljava/lang/StringBuilder; */
/* invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V */
(( java.lang.Object ) p0 ).getClass ( ); // invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
(( java.lang.Class ) p3 ).getSimpleName ( ); // invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
(( java.lang.StringBuilder ) p1 ).append ( p3 ); // invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String p3 = ":"; // const-string p3, ":"
(( java.lang.StringBuilder ) p1 ).append ( p3 ); // invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) p1 ).toString ( ); // invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( java.io.PrintWriter ) p2 ).println ( p1 ); // invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
final String p1 = " "; // const-string p1, " "
/* .line 769 */
(( java.io.PrintWriter ) p2 ).print ( p1 ); // invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).getState ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;
(( com.android.systemui.plugins.qs.QSTile$State ) p0 ).toString ( ); // invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;
(( java.io.PrintWriter ) p2 ).println ( p0 ); // invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
return;
} // .end method
public void fireScanStateChanged ( Boolean p0 ) {
/* .locals 2 */
/* .line 336 */
p0 = this.mHandler;
int v0 = 0; // const/4 v0, 0x0
/* const/16 v1, 0x9 */
(( android.os.Handler ) p0 ).obtainMessage ( v1, p1, v0 ); // invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
(( android.os.Message ) p0 ).sendToTarget ( ); // invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
return;
} // .end method
public void fireToggleStateChanged ( Boolean p0 ) {
/* .locals 2 */
/* .line 332 */
p0 = this.mHandler;
int v0 = 0; // const/4 v0, 0x0
/* const/16 v1, 0x8 */
(( android.os.Handler ) p0 ).obtainMessage ( v1, p1, v0 ); // invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
(( android.os.Message ) p0 ).sendToTarget ( ); // invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
return;
} // .end method
public com.android.systemui.plugins.qs.DetailAdapter getDetailAdapter ( ) {
/* .locals 0 */
int p0 = 0; // const/4 p0, 0x0
} // .end method
public com.android.systemui.qs.QSHost getHost ( ) {
/* .locals 0 */
/* .line 226 */
p0 = this.mHost;
} // .end method
public com.android.internal.logging.InstanceId getInstanceId ( ) {
/* .locals 0 */
/* .line 197 */
p0 = this.mInstanceId;
} // .end method
public androidx.lifecycle.Lifecycle getLifecycle ( ) {
/* .locals 0 */
/* .line 192 */
p0 = this.mLifecycle;
} // .end method
public abstract android.content.Intent getLongClickIntent ( ) {
} // .end method
public abstract Integer getMetricsCategory ( ) {
} // .end method
public java.lang.String getMetricsSpec ( ) {
/* .locals 0 */
/* .line 536 */
p0 = this.mTileSpec;
} // .end method
protected Long getStaleTimeout ( ) {
/* .locals 2 */
/* const-wide/32 v0, 0x927c0 */
/* return-wide v0 */
} // .end method
public com.android.systemui.plugins.qs.QSTile$State getState ( ) {
/* .locals 0 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "()TTState;" */
/* } */
} // .end annotation
/* .line 344 */
p0 = this.mState;
} // .end method
public abstract java.lang.CharSequence getTileLabel ( ) {
} // .end method
public java.lang.String getTileSpec ( ) {
/* .locals 0 */
/* .line 218 */
p0 = this.mTileSpec;
} // .end method
protected abstract void handleClick ( ) {
} // .end method
protected void handleDestroy ( ) {
/* .locals 3 */
/* .line 508 */
v0 = this.mQSLogger;
v1 = this.mTileSpec;
final String v2 = "Handle destroy"; // const-string v2, "Handle destroy"
(( com.android.systemui.qs.logging.QSLogger ) v0 ).logTileDestroyed ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V
/* .line 509 */
v0 = this.mListeners;
v0 = (( android.util.ArraySet ) v0 ).size ( ); // invoke-virtual {v0}, Landroid/util/ArraySet;->size()I
if ( v0 != null) { // if-eqz v0, :cond_0
int v0 = 0; // const/4 v0, 0x0
/* .line 510 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).handleSetListening ( v0 ); // invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V
/* .line 511 */
v0 = this.mListeners;
(( android.util.ArraySet ) v0 ).clear ( ); // invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V
/* .line 513 */
} // :cond_0
v0 = this.mCallbacks;
(( java.util.ArrayList ) v0 ).clear ( ); // invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
/* .line 514 */
v0 = this.mHandler;
int v1 = 0; // const/4 v1, 0x0
(( android.os.Handler ) v0 ).removeCallbacksAndMessages ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
/* .line 516 */
v0 = this.mUiHandler;
/* new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl-$$ExternalSyntheticLambda0; */
/* invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V */
(( android.os.Handler ) v0 ).post ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return;
} // .end method
protected void handleLongClick ( ) {
/* .locals 2 */
/* .line 381 */
v0 = this.mActivityStarter;
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).getLongClickIntent ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLongClickIntent()Landroid/content/Intent;
int v1 = 0; // const/4 v1, 0x0
return;
} // .end method
protected void handleRefreshState ( java.lang.Object p0 ) {
/* .locals 3 */
/* .line 392 */
v0 = this.mTmpState;
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).handleUpdateState ( v0, p1 ); // invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
/* .line 393 */
p1 = this.mTmpState;
v0 = this.mState;
p1 = (( com.android.systemui.plugins.qs.QSTile$State ) p1 ).copyTo ( v0 ); // invoke-virtual {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
/* .line 394 */
/* iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I */
int v1 = 1; // const/4 v1, 0x1
/* if-ne v0, v1, :cond_0 */
int p1 = 2; // const/4 p1, 0x2
/* .line 395 */
/* iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I */
/* move p1, v1 */
} // :cond_0
if ( p1 != null) { // if-eqz p1, :cond_1
/* .line 399 */
p1 = this.mQSLogger;
v0 = this.mTileSpec;
v1 = this.mState;
(( com.android.systemui.qs.logging.QSLogger ) p1 ).logTileUpdated ( v0, v1 ); // invoke-virtual {p1, v0, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logTileUpdated(Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$State;)V
/* .line 400 */
/* invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStateChanged()V */
/* .line 402 */
} // :cond_1
p1 = this.mHandler;
/* const/16 v0, 0xe */
(( android.os.Handler ) p1 ).removeMessages ( v0 ); // invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V
/* .line 403 */
p1 = this.mHandler;
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).getStaleTimeout ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getStaleTimeout()J
/* move-result-wide v1 */
(( android.os.Handler ) p1 ).sendEmptyMessageDelayed ( v0, v1, v2 ); // invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
/* .line 404 */
p1 = this.mStaleListener;
int v0 = 0; // const/4 v0, 0x0
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).setListening ( p1, v0 ); // invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Ljava/lang/Object;Z)V
return;
} // .end method
protected void handleSecondaryClick ( ) {
/* .locals 0 */
/* .line 373 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).handleClick ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V
return;
} // .end method
protected void handleSetListening ( Boolean p0 ) {
/* .locals 1 */
/* .line 502 */
v0 = this.mTileSpec;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 503 */
p0 = this.mQSLogger;
(( com.android.systemui.qs.logging.QSLogger ) p0 ).logTileChangeListening ( v0, p1 ); // invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logTileChangeListening(Ljava/lang/String;Z)V
} // :cond_0
return;
} // .end method
protected void handleStale ( ) {
/* .locals 2 */
/* .annotation build Lcom/android/internal/annotations/VisibleForTesting; */
} // .end annotation
/* .line 214 */
v0 = this.mStaleListener;
int v1 = 1; // const/4 v1, 0x1
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).setListening ( v0, v1 ); // invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Ljava/lang/Object;Z)V
return;
} // .end method
protected abstract void handleUpdateState ( com.android.systemui.plugins.qs.QSTile$State p0, java.lang.Object p1 ) {
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(TTState;", */
/* "Ljava/lang/Object;", */
/* ")V" */
/* } */
} // .end annotation
} // .end method
protected void handleUserSwitch ( Integer p0 ) {
/* .locals 0 */
int p1 = 0; // const/4 p1, 0x0
/* .line 455 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).handleRefreshState ( p1 ); // invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V
return;
} // .end method
public Boolean isAvailable ( ) {
/* .locals 0 */
int p0 = 1; // const/4 p0, 0x1
} // .end method
protected Boolean isShowingDetail ( ) {
/* .locals 0 */
/* .line 439 */
/* iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z */
} // .end method
public Boolean isTileReady ( ) {
/* .locals 1 */
/* .line 551 */
/* iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I */
int v0 = 2; // const/4 v0, 0x2
/* if-ne p0, v0, :cond_0 */
int p0 = 1; // const/4 p0, 0x1
} // :cond_0
int p0 = 0; // const/4 p0, 0x0
} // :goto_0
} // .end method
public void longClick ( ) {
/* .locals 6 */
/* .line 292 */
v0 = this.mMetricsLogger;
/* new-instance v1, Landroid/metrics/LogMaker; */
/* const/16 v2, 0x16e */
/* invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V */
int v2 = 4; // const/4 v2, 0x4
(( android.metrics.LogMaker ) v1 ).setType ( v2 ); // invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;
v3 = this.mStatusBarStateController;
v3 = /* .line 294 */
java.lang.Integer .valueOf ( v3 );
/* const/16 v4, 0x638 */
/* .line 293 */
(( android.metrics.LogMaker ) v1 ).addTaggedData ( v4, v3 ); // invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;
/* .line 292 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).populate ( v1 ); // invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
(( com.android.internal.logging.MetricsLogger ) v0 ).write ( v1 ); // invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V
/* .line 295 */
v0 = this.mUiEventLogger;
v1 = com.android.systemui.qs.QSEvent.QS_ACTION_LONG_PRESS;
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).getMetricsSpec ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;
/* .line 296 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).getInstanceId ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getInstanceId()Lcom/android/internal/logging/InstanceId;
int v5 = 0; // const/4 v5, 0x0
/* .line 295 */
/* .line 297 */
v0 = this.mQSLogger;
v1 = this.mTileSpec;
v3 = v3 = this.mStatusBarStateController;
v4 = this.mState;
/* iget v4, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
(( com.android.systemui.qs.logging.QSLogger ) v0 ).logTileLongClick ( v1, v3, v4 ); // invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/qs/logging/QSLogger;->logTileLongClick(Ljava/lang/String;II)V
/* .line 298 */
v0 = this.mHandler;
(( android.os.Handler ) v0 ).sendEmptyMessage ( v2 ); // invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
/* .line 300 */
p0 = this.mContext;
final String v0 = "QsLongPressTooltipShownCount"; // const-string v0, "QsLongPressTooltipShownCount"
int v1 = 2; // const/4 v1, 0x2
com.android.systemui.Prefs .putInt ( p0,v0,v1 );
return;
} // .end method
public abstract com.android.systemui.plugins.qs.QSTile$State newTileState ( ) {
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "()TTState;" */
/* } */
} // .end annotation
} // .end method
public android.metrics.LogMaker populate ( android.metrics.LogMaker p0 ) {
/* .locals 2 */
/* .line 307 */
v0 = this.mState;
/* instance-of v1, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState; */
if ( v1 != null) { // if-eqz v1, :cond_0
/* const/16 v1, 0x3a0 */
/* .line 308 */
/* check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState; */
/* iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z */
java.lang.Integer .valueOf ( v0 );
(( android.metrics.LogMaker ) p1 ).addTaggedData ( v1, v0 ); // invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;
/* .line 310 */
} // :cond_0
v0 = (( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).getMetricsCategory ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsCategory()I
(( android.metrics.LogMaker ) p1 ).setSubtype ( v0 ); // invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;
/* const/16 v0, 0x639 */
/* iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I */
/* .line 311 */
java.lang.Integer .valueOf ( v1 );
(( android.metrics.LogMaker ) p1 ).addTaggedData ( v0, v1 ); // invoke-virtual {p1, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;
/* const/16 v0, 0x39f */
v1 = this.mHost;
p0 = this.mTileSpec;
p0 = /* .line 312 */
java.lang.Integer .valueOf ( p0 );
(( android.metrics.LogMaker ) p1 ).addTaggedData ( v0, p0 ); // invoke-virtual {p1, v0, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;
} // .end method
public void refreshState ( ) {
/* .locals 1 */
int v0 = 0; // const/4 v0, 0x0
/* .line 320 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).refreshState ( v0 ); // invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V
return;
} // .end method
protected final void refreshState ( java.lang.Object p0 ) {
/* .locals 1 */
/* .line 324 */
p0 = this.mHandler;
int v0 = 5; // const/4 v0, 0x5
(( android.os.Handler ) p0 ).obtainMessage ( v0, p1 ); // invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
(( android.os.Message ) p0 ).sendToTarget ( ); // invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
return;
} // .end method
public void removeCallback ( com.android.systemui.plugins.qs.QSTile$Callback p0 ) {
/* .locals 1 */
/* .line 263 */
p0 = this.mHandler;
/* const/16 v0, 0xc */
(( android.os.Handler ) p0 ).obtainMessage ( v0, p1 ); // invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
(( android.os.Message ) p0 ).sendToTarget ( ); // invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
return;
} // .end method
public void removeCallbacks ( ) {
/* .locals 1 */
/* .line 267 */
p0 = this.mHandler;
/* const/16 v0, 0xb */
(( android.os.Handler ) p0 ).sendEmptyMessage ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return;
} // .end method
protected final void resetStates ( ) {
/* .locals 1 */
/* .line 185 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).newTileState ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
this.mState = v0;
/* .line 186 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).newTileState ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
this.mTmpState = v0;
return;
} // .end method
public void secondaryClick ( ) {
/* .locals 5 */
/* .line 281 */
v0 = this.mMetricsLogger;
/* new-instance v1, Landroid/metrics/LogMaker; */
/* const/16 v2, 0x39e */
/* invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V */
int v2 = 4; // const/4 v2, 0x4
(( android.metrics.LogMaker ) v1 ).setType ( v2 ); // invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;
v2 = this.mStatusBarStateController;
v2 = /* .line 283 */
java.lang.Integer .valueOf ( v2 );
/* const/16 v3, 0x638 */
/* .line 282 */
(( android.metrics.LogMaker ) v1 ).addTaggedData ( v3, v2 ); // invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;
/* .line 281 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).populate ( v1 ); // invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
(( com.android.internal.logging.MetricsLogger ) v0 ).write ( v1 ); // invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V
/* .line 284 */
v0 = this.mUiEventLogger;
v1 = com.android.systemui.qs.QSEvent.QS_ACTION_SECONDARY_CLICK;
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).getMetricsSpec ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;
/* .line 285 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).getInstanceId ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getInstanceId()Lcom/android/internal/logging/InstanceId;
int v4 = 0; // const/4 v4, 0x0
/* .line 284 */
/* .line 286 */
v0 = this.mQSLogger;
v1 = this.mTileSpec;
v2 = v2 = this.mStatusBarStateController;
v3 = this.mState;
/* iget v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
(( com.android.systemui.qs.logging.QSLogger ) v0 ).logTileSecondaryClick ( v1, v2, v3 ); // invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/logging/QSLogger;->logTileSecondaryClick(Ljava/lang/String;II)V
/* .line 288 */
p0 = this.mHandler;
int v0 = 3; // const/4 v0, 0x3
(( android.os.Handler ) p0 ).sendEmptyMessage ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return;
} // .end method
public void setDetailListening ( Boolean p0 ) {
/* .locals 0 */
return;
} // .end method
public void setListening ( java.lang.Object p0, Boolean p1 ) {
/* .locals 2 */
/* .line 205 */
p0 = this.mHandler;
int v0 = 0; // const/4 v0, 0x0
/* const/16 v1, 0xd */
(( android.os.Handler ) p0 ).obtainMessage ( v1, p2, v0, p1 ); // invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
(( android.os.Message ) p0 ).sendToTarget ( ); // invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
return;
} // .end method
public void setTileSpec ( java.lang.String p0 ) {
/* .locals 0 */
/* .line 222 */
this.mTileSpec = p1;
return;
} // .end method
protected Boolean shouldAnnouncementBeDelayed ( ) {
/* .locals 0 */
int p0 = 0; // const/4 p0, 0x0
} // .end method
public void showDetail ( Boolean p0 ) {
/* .locals 2 */
/* .line 316 */
p0 = this.mHandler;
int v0 = 0; // const/4 v0, 0x0
int v1 = 6; // const/4 v1, 0x6
(( android.os.Handler ) p0 ).obtainMessage ( v1, p1, v0 ); // invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
(( android.os.Message ) p0 ).sendToTarget ( ); // invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
return;
} // .end method
public void userSwitch ( Integer p0 ) {
/* .locals 2 */
/* .line 328 */
p0 = this.mHandler;
int v0 = 7; // const/4 v0, 0x7
int v1 = 0; // const/4 v1, 0x0
(( android.os.Handler ) p0 ).obtainMessage ( v0, p1, v1 ); // invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
(( android.os.Message ) p0 ).sendToTarget ( ); // invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
return;
} // .end method
