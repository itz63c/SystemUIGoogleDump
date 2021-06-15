.class public final synthetic Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

.field public final synthetic f$1:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;ILcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;

    iput p3, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda2;->f$3:Lcom/android/internal/policy/PhoneWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;

    iget v2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda2;->f$2:I

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda2;->f$3:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->$r8$lambda$KkVvtj60PxM7koDSkL3Z6f3EFH0(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;ILcom/android/internal/policy/PhoneWindow;)V

    return-void
.end method
