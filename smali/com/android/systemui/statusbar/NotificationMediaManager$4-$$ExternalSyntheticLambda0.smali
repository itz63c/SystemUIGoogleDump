.class public final synthetic Lcom/android/systemui/statusbar/NotificationMediaManager$4-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationMediaManager$4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager$4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$4-$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationMediaManager$4;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$4-$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationMediaManager$4;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager$4;->$r8$lambda$f9afLNc5c5YEwy7CeAq77j9i7gY(Lcom/android/systemui/statusbar/NotificationMediaManager$4;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
