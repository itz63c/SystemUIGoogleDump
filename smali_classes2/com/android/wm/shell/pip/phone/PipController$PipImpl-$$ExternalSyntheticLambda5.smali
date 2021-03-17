.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda5;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda5;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda5;->f$1:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda5;->f$2:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->$r8$lambda$-EJeB3_CJ_oKJiBav0jXvTQhe6A(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    return-void
.end method
