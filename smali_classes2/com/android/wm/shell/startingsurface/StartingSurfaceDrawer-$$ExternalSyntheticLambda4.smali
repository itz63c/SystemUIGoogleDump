.class public final synthetic Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>([I[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda4;->f$0:[I

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda4;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda4;->f$0:[I

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda4;->f$1:[Z

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->$r8$lambda$DBsACOa3Ds8Ja3bkXwG4DicFo2Q([I[ZLandroid/content/res/TypedArray;)V

    return-void
.end method
