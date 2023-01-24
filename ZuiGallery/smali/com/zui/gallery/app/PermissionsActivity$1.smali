.class Lcom/zui/gallery/app/PermissionsActivity$1;
.super Ljava/lang/Object;
.source "PermissionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PermissionsActivity;->popUpPermisionsDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PermissionsActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PermissionsActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/zui/gallery/app/PermissionsActivity$1;->this$0:Lcom/zui/gallery/app/PermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/zui/gallery/app/PermissionsActivity$1;->this$0:Lcom/zui/gallery/app/PermissionsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/zui/gallery/app/PermissionsActivity;->access$000(Lcom/zui/gallery/app/PermissionsActivity;I)V

    return-void
.end method
