.class public final synthetic Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/theme/ThemeOverlayController;

.field public final synthetic f$1:Landroid/app/WallpaperColors;

.field public final synthetic f$2:Landroid/app/WallpaperColors;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/app/WallpaperColors;Landroid/app/WallpaperColors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iput-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda2;->f$1:Landroid/app/WallpaperColors;

    iput-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda2;->f$2:Landroid/app/WallpaperColors;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda2;->f$1:Landroid/app/WallpaperColors;

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda2;->f$2:Landroid/app/WallpaperColors;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/theme/ThemeOverlayController;->$r8$lambda$PpSDYnJstUOCvuxQtne1Yqu67ak(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/app/WallpaperColors;Landroid/app/WallpaperColors;)V

    return-void
.end method
