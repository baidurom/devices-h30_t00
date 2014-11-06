.class Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;
.super Ljava/lang/Object;
.source "TextSelectWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;


# direct methods
.method constructor <init>(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 707
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 708
    const/4 v1, 0x0

    .line 709
    .local v1, url:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://translate.google.co.jp/m/translate?hl=ja&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->access$100(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#submit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 760
    :goto_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 761
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 762
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->access$200(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .end local v0           #i:Landroid/content/Intent;
    :goto_1
    return-void

    .line 714
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://translate.google.com.hk/m/translate?hl=zh&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->access$100(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#submit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 719
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://translate.google.es/m/translate?hl=es&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->access$100(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#submit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 724
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://translate.google.pt/m/translate?hl=pt&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->access$100(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#submit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 729
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "de"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://translate.google.de/m/translate?hl=de&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->access$100(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#submit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 734
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://translate.google.fr/m/translate?hl=fr&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->access$100(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#submit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 739
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://translate.google.pl/m/translate?hl=pl&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->access$100(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#submit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 744
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "it"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://translate.google.it/m/translate?hl=it&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->access$100(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#submit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 749
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://translate.google.ru/m/translate?hl=ru&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->access$100(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#submit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 756
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://translate.google.com/m/translate?hl=en&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->access$100(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#submit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 763
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method
