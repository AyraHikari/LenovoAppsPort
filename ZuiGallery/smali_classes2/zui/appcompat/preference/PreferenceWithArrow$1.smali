.class Lzui/appcompat/preference/PreferenceWithArrow$1;
.super Ljava/lang/Object;
.source "PreferenceWithArrow.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/preference/PreferenceWithArrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/appcompat/preference/PreferenceWithArrow;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/PreferenceWithArrow;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lzui/appcompat/preference/PreferenceWithArrow$1;->this$0:Lzui/appcompat/preference/PreferenceWithArrow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 47
    iget-object v0, p0, Lzui/appcompat/preference/PreferenceWithArrow$1;->this$0:Lzui/appcompat/preference/PreferenceWithArrow;

    invoke-static {v0}, Lzui/appcompat/preference/PreferenceWithArrow;->access$000(Lzui/appcompat/preference/PreferenceWithArrow;)V

    return-void
.end method
