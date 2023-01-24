.class public Lcom/zui/internal/app/MessageController$ClickableItem;
.super Ljava/lang/Object;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickableItem"
.end annotation


# instance fields
.field public mClickListener:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;

.field public mClickableTexts:[Ljava/lang/CharSequence;

.field public mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
