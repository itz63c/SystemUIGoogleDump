.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;

.field public final synthetic f$1:Landroid/content/pm/ActivityInfo;

.field public final synthetic f$2:Landroid/app/PictureInPictureParams;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;->f$0:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;->f$1:Landroid/content/pm/ActivityInfo;

    iput-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;->f$2:Landroid/app/PictureInPictureParams;

    iput p4, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;->f$3:I

    iput p5, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;->f$4:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;->f$0:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;->f$1:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;->f$2:Landroid/app/PictureInPictureParams;

    iget v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;->f$3:I

    iget v4, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;->f$4:I

    move-object v5, p1

    check-cast v5, Lcom/android/wm/shell/pip/Pip;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/recents/OverviewProxyService$1;->$r8$lambda$JCURSeXMXGX2qZUQjeuOuB3_7-M(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;IILcom/android/wm/shell/pip/Pip;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
